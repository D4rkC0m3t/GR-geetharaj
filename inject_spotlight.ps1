$path = "d:\Projects\GeethaRaj\index.html"
$lines = [System.IO.File]::ReadAllLines($path)

# 1. ADD SCRIPT AT THE END
$scriptContent = @"
    <script>
        // Spotlight Effect Script
        document.addEventListener('DOMContentLoaded', () => {
            const contactSection = document.getElementById('contact-support');
            if (!contactSection) return;

            contactSection.addEventListener('mousemove', (e) => {
                const rect = contactSection.getBoundingClientRect();
                const x = e.clientX - rect.left;
                const y = e.clientY - rect.top;
                
                // Update CSS variables for the spotlight position
                contactSection.style.setProperty('--mouse-x', `${x}px`);
                contactSection.style.setProperty('--mouse-y', `${y}px`);
            });
        });
    </script>
</body>
</html>
"@

# Replace closing body tags
$contentString = [string]::Join("`n", $lines)
$contentString = $contentString.Replace("</body>`n</html>", $scriptContent)
$contentString = $contentString.Replace("</body></html>", $scriptContent) # Handle no newline
# Fallback if neither matches directly (unlikely if formatted, but let's be safe)
if (-not $contentString.Contains("Spotlight Effect Script")) {
    $contentString = $contentString -replace "</body>\s*</html>", $scriptContent
}

# 2. INJECT SPOTLIGHT LAYERS INTO CONTACT SECTION
$spotlightLayers = @"
    <section id="contact-support" class="section section-contact-redesign">
        <!-- Spotlight Background Layers -->
        <div class="spotlight-bg-grid"></div>
        <div class="spotlight-overlay"></div>
        
        <div class="container contact-max-width relative-z">
"@

# We look for the opening tag of the contact section we created earlier
$sectionStartTag = '<section id="contact-support" class="section section-contact-redesign">'
$containerStartTag = '<div class="container contact-max-width">'

# To insert properly, we replace the Section start + Container start with Section Start + Layers + Container with new class
$oldSectionStart = @"
    <section id="contact-support" class="section section-contact-redesign">
        <div class="container contact-max-width">
"@

$contentString = $contentString.Replace($oldSectionStart.Replace("`r`n", "`n"), $spotlightLayers.Replace("`r`n", "`n"))
# Also try Windows line endings just in case the file reading normalized locally but string compare fails
$contentString = $contentString.Replace($oldSectionStart, $spotlightLayers)

[System.IO.File]::WriteAllText($path, $contentString)
