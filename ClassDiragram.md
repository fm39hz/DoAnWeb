- Class Diagram

  ```mermaid
  ---
  title: Class Diagram
  ---
  classDiagram
  direction RL
  note "Note: All classes already has CRUD"
  class ISpecification {
      <<interface>>
      +long Id
      +string BrandName
      }

  class IPromoteStrategy {
      <<interface>>
      +bool IsValid
      +double DoSale()
      }

  class Product {
      +long Id
      +string Name
      +string Description
      +double BasePrice
      +int Instock
      +ISpecification Specification
      }

  class ShoppingCart {
      +List~ShoppingItem~ ShoppingItems
      +double GetFinalPrice()
      }

  class ShoppingItem {
      +long Id
      +Product Target
      +int Quantity
      +bool IsSelected
      +List~IPromoteStrategy~ ValidPromoteStrategy
      }

  class User {
      +long Id
      #string UserName
      #string UserCredential
      #void ModifyInformation()
      }

  class Guest {
      +ShoppingCart Cart
      +ShippingInformation ShippingInfo
      #void CheckOut()
      }

  class ShippingInformation {
      +string PhoneNumber
      +string Address
      }

  class Admin {
      #void GrantPermission()
      }

  class Stock {
      <<singleton>>
      +List~Product~ AvailableProducts
      +List~Product~ FindProducts()
      +void SortProducts()
      }

  Guest <|-- User
  Admin <|-- User
  Product "1" --o "1" ShoppingItem
  IPromoteStrategy "*" --o "1" ShoppingItem
  Product "*" --o "1" Stock
  Guest "*" --o "1" Stock
  ShoppingCart "1" --o "1"  Guest:
  ShippingInformation "1" --o "1"  Guest:
  ISpecification  "1" --o "1" Product
  ShoppingItem "*" --o "1" ShoppingCart
  ```
