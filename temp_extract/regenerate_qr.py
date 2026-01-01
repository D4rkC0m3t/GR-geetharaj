import qrcode
from PIL import Image, ImageDraw, ImageFont
import os

# 1) Paste your FINAL published website URL here (GitHub Pages link)
FINAL_URL = "https://<your-username>.github.io/<repo-name>/"

# --- QR (PNG) ---
qr = qrcode.QRCode(error_correction=qrcode.constants.ERROR_CORRECT_H, box_size=12, border=4)
qr.add_data(FINAL_URL)
qr.make(fit=True)
img_qr = qr.make_image(fill_color="black", back_color="white").convert("RGB")
img_qr.save("qr_geetha.png")

# --- QR (SVG) ---
try:
    import qrcode.image.svg
    factory = qrcode.image.svg.SvgImage
    qr_svg = qrcode.QRCode(error_correction=qrcode.constants.ERROR_CORRECT_H, box_size=10, border=4, image_factory=factory)
    qr_svg.add_data(FINAL_URL)
    qr_svg.make(fit=True)
    img_svg = qr_svg.make_image()
    with open("qr_geetha.svg", "wb") as f:
        img_svg.save(f)
except Exception as e:
    print("SVG generation skipped:", e)

# --- Poster (1080x1920) ---
W, H = 1080, 1920
poster = Image.new("RGB", (W, H), (10, 12, 20))
draw = ImageDraw.Draw(poster)

for y in range(H):
    t = y/(H-1)
    r = int(120*(1-t) + 30*t)
    g = int(40*(1-t) + 70*t)
    b = int(170*(1-t) + 190*t)
    draw.line([(0,y),(W,y)], fill=(r,g,b))

def load_font(size, bold=False):
    candidates = [
        "/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf" if bold else "/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf",
        "/usr/share/fonts/truetype/liberation/LiberationSans-Bold.ttf" if bold else "/usr/share/fonts/truetype/liberation/LiberationSans-Regular.ttf",
    ]
    for c in candidates:
        if os.path.exists(c):
            return ImageFont.truetype(c, size=size)
    return ImageFont.load_default()

font_title = load_font(88, bold=True)
font_sub = load_font(38, bold=False)
font_thanks = load_font(56, bold=True)
font_footer = load_font(30, bold=False)

title = "Geetha Raj"
sub = "KSBC Election 2026 Contestant"
tw, th = draw.textbbox((0,0), title, font=font_title)[2:]
draw.text(((W-tw)//2, 210), title, font=font_title, fill=(255,255,255))
sw, sh = draw.textbbox((0,0), sub, font=font_sub)[2:]
draw.text(((W-sw)//2, 320), sub, font=font_sub, fill=(245,245,245))

qr_size = 760
qr_img_resized = img_qr.resize((qr_size, qr_size))
box_x = (W- (qr_size+80))//2
box_y = 420
box_w = qr_size+80
box_h = qr_size+80
draw.rounded_rectangle([box_x, box_y, box_x+box_w, box_y+box_h], radius=36, fill=(255,255,255), outline=(230,230,230), width=3)
poster.paste(qr_img_resized, (box_x+40, box_y+40))

thanks = "SCAN FOR MANIFESTO & CONTACT"
tw2, th2 = draw.textbbox((0,0), thanks, font=font_thanks)[2:]
draw.text(((W-tw2)//2, box_y+box_h+90), thanks, font=font_thanks, fill=(255,255,255))

footer = "📞 +91 96633 81828   ✉️ githa.raj02@gmail.com"
fw, fh = draw.textbbox((0,0), footer, font=font_footer)[2:]
draw.text(((W-fw)//2, H-170), footer, font=font_footer, fill=(255,255,255))

footer2 = "Geetha Raj & Associates • 5th Cross, Magadi Road, Bengaluru – 560 023"
fw2, fh2 = draw.textbbox((0,0), footer2, font=font_footer)[2:]
draw.text(((W-fw2)//2, H-125), footer2, font=font_footer, fill=(255,255,255))

poster.save("poster_qr_geetha.png")
print("Done: qr_geetha.png, qr_geetha.svg (if available), poster_qr_geetha.png")
