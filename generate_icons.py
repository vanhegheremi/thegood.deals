from PIL import Image
import os

def generate_icons(source_path, output_dir):
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    
    sizes = [72, 96, 128, 144, 152, 192, 384, 512]
    with Image.open(source_path) as img:
        # Convert to RGB if necessary (for JPG to PNG)
        if img.mode in ("RGBA", "P"):
            img = img.convert("RGB")
            
        for size in sizes:
            resized_img = img.resize((size, size), Image.Resampling.LANCZOS)
            resized_img.save(os.path.join(output_dir, f"icon-{size}x{size}.png"), "PNG")
            print(f"Generated icon-{size}x{size}.png")

if __name__ == "__main__":
    generate_icons("icons/favicon.jpg", "icons")
