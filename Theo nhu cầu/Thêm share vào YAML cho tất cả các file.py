import sys
# sys.path.insert(0, 'D:\Programming\Obsidian\py-obsidianmd')

from pathlib import Path
from pyomd import Notes
from pyomd.metadata import MetadataType

vault_path = Path(sys.argv[1])
print(f"Thư mục làm việc: {vault_path}")

print("Tạo object Notes cho tất cả các ghi chú") 
all_notes = Notes(vault_path)
print("Đã tạo xong")

print("Thêm `share: true` vào metadata của tất cả các ghi chú")
all_notes.metadata.add(k="share", l="true", meta_type=MetadataType.FRONTMATTER)

print("Bỏ những giá trị bị trùng")
all_notes.metadata.remove_duplicate_values() 

print("Ghi vào vault")
all_notes.update_content()
all_notes.write()

no_shared_path = Path(sys.argv[1]+"\Thiết lập")
print(f"Thư mục không chia sẻ: {no_shared_path}")

print("Tạo object Notes cho tất cả các ghi chú không muốn chia sẻ") 
no_shared_notes = Notes(no_shared_path)
print("Đã tạo xong")

print("Bỏ `share: true` ra khỏi metadata của tất cả các ghi chú không muốn chia sẻ")
no_shared_notes.metadata.remove(k="share")

print("Ghi vào vault")
no_shared_notes.update_content()
no_shared_notes.write()
