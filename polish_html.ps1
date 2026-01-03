$path = "d:\Projects\GeethaRaj\index.html"
$lines = [System.IO.File]::ReadAllLines($path)
$newContent = @"
    <!-- CONTACT & SUPPORT REDESIGN -->
    <section id="contact-support" class="section section-contact-redesign">
        <div class="container contact-max-width">
            
            <div class="contact-layout-two-col">
                <!-- LEFT COLUMN: Contact Info -->
                <div class="contact-left-panel">
                    <h2 class="contact-heading">Contact</h2>
                    
                    <div class="contact-details-group">
                        <h3 class="contact-name"><strong>Geetha Raj & Associates</strong></h3>
                        <p class="contact-address">5th Cross, Magadi Road,<br>Bengaluru – 560 023</p>
                    </div>

                    <div class="contact-info-rows">
                        <p class="contact-row">
                            <span class="icon-box-small">
                                <!-- Phone Icon -->
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path></svg>
                            </span> 
                            <span class="text-highlight">+91 96633 81828</span>
                        </p>
                        <p class="contact-row">
                            <span class="icon-box-small">
                                <!-- Mail Icon -->
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path><polyline points="22,6 12,13 2,6"></polyline></svg>
                            </span> 
                            <a href="mailto:advgeetharaj@gmail.com" class="text-link">advgeetharaj@gmail.com</a>
                        </p>
                    </div>

                    <div class="contact-action">
                        <a href="https://wa.me/919663381828" class="btn-whatsapp-outline">
                            <svg viewBox="0 0 24 24" width="18" height="18" fill="currentColor" xmlns="http://www.w3.org/2000/svg" style="margin-right: 8px; vertical-align: middle;">
                                <path d="M12.031 6.172c-3.181 0-5.767 2.586-5.768 5.766-.001 1.298.38 2.27 1.019 3.287l-.711 2.598 2.654-.698c.93.597 1.831.785 2.802.785 3.16 0 5.769-2.586 5.769-5.766.001-3.18-2.585-5.77-5.765-5.772zm7.418 5.766c-.001 4.093-3.325 7.417-7.418 7.417-1.165 0-2.316-.279-3.324-.766l-4.436 1.168 1.196-4.316c-.633-1.109-1.028-2.385-1.029-3.504 0-4.093 3.326-7.417 7.419-7.417 4.093 0 7.418 3.326 7.418 7.418z" />
                            </svg>
                            WhatsApp Now
                        </a>
                    </div>
                </div>

                <!-- RIGHT COLUMN: Support (Voluntary) Panel -->
                <div class="support-right-panel">
                    <div class="support-card-header">
                        <h3 class="support-card-title">Support (Voluntary)</h3>
                        <p class="support-card-subtitle">Your support, in compliance with election rules</p>
                    </div>

                    <div class="support-list">
                        <!-- Item 1 -->
                        <div class="support-item">
                            <div class="support-icon-box">
                                <!-- Check/Vote Icon -->
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon-simple"><path d="M14.5 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7.5L14.5 2z"></path><polyline points="14 2 14 8 20 8"></polyline><path d="M9 15l2 2 4-4"></path></svg>
                            </div>
                            <div class="support-text">
                                <strong>Vote</strong> as per election rules
                            </div>
                        </div>

                        <!-- Item 2 -->
                        <div class="support-item">
                            <div class="support-icon-box">
                                <!-- Share Icon -->
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon-simple"><circle cx="18" cy="5" r="3"></circle><circle cx="6" cy="12" r="3"></circle><circle cx="18" cy="19" r="3"></circle><line x1="8.59" y1="13.51" x2="15.42" y2="17.49"></line><line x1="15.41" y1="6.51" x2="8.59" y2="10.49"></line></svg>
                            </div>
                            <div class="support-text">
                                <strong>Share campaign information</strong> with fellow advocates (where permitted)
                            </div>
                        </div>

                        <!-- Item 3 -->
                        <div class="support-item">
                            <div class="support-icon-box">
                                <!-- Message/Endorse Icon -->
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon-simple"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path></svg>
                            </div>
                            <div class="support-text">
                                <strong>Send a voluntary endorsement</strong> via WhatsApp
                            </div>
                        </div>

                        <!-- Item 4 -->
                        <div class="support-item">
                            <div class="support-icon-box">
                                <!-- Users/Meeting Icon -->
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="icon-simple"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                            </div>
                            <div class="support-text">
                                <strong>Invite for a brief Bar interaction</strong> (if permitted)
                            </div>
                        </div>
                    </div>

                    <div class="support-action">
                        <a href="https://wa.me/?text=I%20support%20Adv.%20Geetha%20Raj%20for%20Karnataka%20State%20Bar%20Council%20Election%202026.%20View%20Manifesto%3A%20https%3A%2F%2Fgeetharajforksbc.com" class="btn-whatsapp-primary">
                            <svg viewBox="0 0 24 24" width="20" height="20" fill="currentColor" xmlns="http://www.w3.org/2000/svg" style="margin-right: 8px;">
                                <path d="M12.031 6.172c-3.181 0-5.767 2.586-5.768 5.766-.001 1.298.38 2.27 1.019 3.287l-.711 2.598 2.654-.698c.93.597 1.831.785 2.802.785 3.16 0 5.769-2.586 5.769-5.766.001-3.18-2.585-5.77-5.765-5.772zm7.418 5.766c-.001 4.093-3.325 7.417-7.418 7.417-1.165 0-2.316-.279-3.324-.766l-4.436 1.168 1.196-4.316c-.633-1.109-1.028-2.385-1.029-3.504 0-4.093 3.326-7.417 7.419-7.417 4.093 0 7.418 3.326 7.418 7.418z" />
                            </svg>
                            Share on WhatsApp
                        </a>
                        <p class="support-disclaimer-note">*All support is voluntary and subject to applicable rules.*</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
"@

# Keep lines 0 to 1257 (1258 lines)
# Lines expected to remove: 1258 to 1350 roughly, based on previous tool output
# We need to find the exact range again if we aren't sure, but we viewed it just now.
# View showed 1258 is <section ...> and 1332 is </section>
# But wait, did I insert new lines previously?
# Let's rely on the previous View output.
# Lines 1259 to 1332 was the section in the view output from Step 75 (Wait, Step 75 showed 1259 as section, 1258 was comment)
# Let's double check step 75 output.
# 1258:     <!-- CONTACT & SUPPORT REDESIGN -->
# 1259:     <section id="contact-support" ...
# ...
# 1352:     </section> (Wait, step 75 cuts off at 1350 inside a content block?)
# Let's re-read the file end to be sure. I'll read 1255 to 1360.

$before = $lines[0..1257]
# I need to find where the section ends.
# Inspecting the content of step 75, it seems the section ends around 1356 maybe?
# I'll enable a robust search for the specific end tag of this section.

$endLine = 0
for ($i = 1258; $i -lt $lines.Count; $i++) {
    if ($lines[$i].Trim() -eq "</section>") {
        # Check if it's the right section (we can assume next section is Footer or we can just looking for the first </section> after 1259)
        # Actually there is a </section> at 1255 closing the previous section.
        # So we look for </section> after 1260.
        if ($i -gt 1260) {
            $endLine = $i
            break
        }
    }
}

$after = $lines[($endLine + 1)..($lines.Count - 1)]

$finalContent = $before + $newContent.Split("`n") + $after

[System.IO.File]::WriteAllLines($path, $finalContent)
