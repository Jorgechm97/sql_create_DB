# ElectroStore Database Schema

This repository contains SQL scripts to create a database schema for an electronic store called ElectroStore. The schema includes tables for managing store organization, employees, products, customers, and invoices.

## Schema Structure

1. **Tiendas (Stores)**: This table stores information about stores, including name, phone number, email, and address.

2. **Cargos (Positions)**: This table defines different positions within the organization.

3. **Empleados (Employees)**: This table stores employee details such as name, identification, phone number, hire date, store ID, and position ID.

4. **Categorias (Categories)**: This table defines different product categories.

5. **Marcas (Brands)**: This table stores information about product brands.

6. **Productos (Products)**: This table stores product details including name, price, stock quantity, brand ID, and category ID.

7. **Clientes (Customers)**: This table stores customer information including name, identification, phone number, address, and email.

8. **EncabezadoFactura (Invoice Header)**: This table stores information about invoices, including invoice number, issue date, customer ID, employee ID, store ID, total amount, delivery date, and status.

9. **DetalleFactura (Invoice Detail)**: This table stores detailed information about invoice items, including product ID, quantity, unit price, and discounts.

## Usage

1. Create a new schema named `ElectroStore`.

2. Switch to the `ElectroStore` schema.

3. Run the provided SQL scripts to create the necessary tables for managing store information, employees, products, customers, and invoices.

4. Use the schema to store and manage data related to an electronic store.

## Contact

- LinkedIn: [Jorge Chaves Montiel](https://www.linkedin.com/in/jorge-chaves-montiel/)
- Email: jchavezmontiel@gmail.com

Thanks for reviewing my project! I am excited to explore new opportunities in the world of data analytics, finance, machine learning and deep learning. Feel free to contact me for more information about my work! 📊📈💼
