addr = Address.where(street: "Rio Guadaquivir", external_number: "442", country: "Mexico", state: "Nuevo Leon", city: "San Pedro", cp: "87000")
addr.destroy_all

Category.destroy_all
ProductType.destroy_all
Vendor.destroy_all
Tax.destroy_all

electronic = Category.create name: "Electronics"
book = Category.create name: "Books"
movies = Category.create name: "Movies"
clothes = Category.create name: "Clothes"

ProductType.create name: "Phones", category_id: electronic.id
ProductType.create name: "Laptops", category_id: electronic.id
ProductType.create name: "Tablets", category_id: electronic.id

ProductType.create name: "Horror", category_id: book.id
ProductType.create name: "Fiction", category_id: book.id
ProductType.create name: "Sex", category_id: book.id

ProductType.create name: "Horror", category_id: movies.id
ProductType.create name: "Comedy", category_id: movies.id
ProductType.create name: "Action", category_id: movies.id

ProductType.create name: "T-shirts", category_id: clothes.id
ProductType.create name: "Jeans", category_id: clothes.id
ProductType.create name: "Shorts", category_id: clothes.id

addr = Address.create(street: "Rio Guadaquivir", external_number: "442", country: "Mexico", state: "Nuevo Leon", city: "San Pedro", cp: "87000")

Vendor.create name: "Nike"
Vendor.create name: "Apple"
Vendor.create name: "Editoral"

Warehouse.create name: "Almacen 2"
Warehouse.create name: "Almacen 1"

Tax.create name: "IVA"
Tax.create name: "ISR"

Store.create name: "La tienda de chuy"
