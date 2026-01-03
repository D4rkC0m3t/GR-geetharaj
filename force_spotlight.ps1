$path = "d:\Projects\GeethaRaj\index.html"
$lines = [System.IO.File]::ReadAllLines($path)
$newLines = @()

$jsInjected = $false
$htmlInjected = $false

foreach ($line in $lines) {
    # 1. Inject HTML Layers inside the section
    if ($line -match '<section id="contact-support" class="section section-contact-redesign">') {
        $newLines += $line
        $newLines += '        <!-- Spotlight Background Layers -->'
        $newLines += '        <div class="spotlight-bg-grid"></div>'
        $newLines += '        <div class="spotlight-overlay"></div>'
        # We need to make sure the next container line adds 'relative-z' if it's there
        # But easier just to let it be, and modify the CSS for .contact-max-width to have z-index
        # Or we can replace the container line if we find it next.
        $htmlInjected = $true
        continue
    }

    # 2. Add 'relative-z' to the container if we are in that section (simple replace if it matches)
    if ($htmlInjected -and $line -match '<div class="container contact-max-width">') {
        $newLines += '        <div class="container contact-max-width relative-z">'
        continue
    }

    # 3. Inject JS before body end
    if ($line -match '</body>') {
        $newLines += '    <script>'
        $newLines += '        // Spotlight Effect Script'
        $newLines += '        document.addEventListener("DOMContentLoaded", () => {'
        $newLines += '            const contactSection = document.getElementById("contact-support");'
        $newLines += '            if (!contactSection) return;'
        $newLines += '            contactSection.addEventListener("mousemove", (e) => {'
        $newLines += '                const rect = contactSection.getBoundingClientRect();'
        $newLines += '                const x = e.clientX - rect.left;'
        $newLines += '                const y = e.clientY - rect.top;'
        $newLines += '                contactSection.style.setProperty("--mouse-x", `${x}px`);'
        $newLines += '                contactSection.style.setProperty("--mouse-y", `${y}px`);'
        $newLines += '            });'
        $newLines += '        });'
        $newLines += '    </script>'
        $newLines += $line
        $jsInjected = $true
        continue
    }

    $newLines += $line
}

[System.IO.File]::WriteAllLines($path, $newLines)
