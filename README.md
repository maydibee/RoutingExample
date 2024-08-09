# Example Project with Router-based navigation approach

## Overview

This project demonstrates a modular and scalable navigation architecture in SwiftUI. The main idea is to maintain a clear separation of concerns between the **Router**, **ViewModel**, and **View** components, ensuring that navigation logic is managed effectively and in a way that scales well as the application grows.

## Key Concepts

- **Router**: Responsible for creating and managing the flow between different screens. The Router handles the navigation logic and the creation of the ViewModel. It also provides the ViewModel with a reference to itself, allowing the ViewModel to trigger navigation actions through the Router.

- **ViewModel**: Acts as the intermediary between the View and the Router. It holds the state of the View and contains business logic. The ViewModel receives navigation requests from the View and decides, based on its state, which navigation method on the Router should be called.

- **View**: The View is responsible for presenting the UI and user interactions. It binds to the ViewModel to display data and handle user inputs. When a navigation action is required (e.g., pressing a button), the ViewModel is informed, and the ViewModel triggers the appropriate navigation through the Router.

## Navigation Flow

1. **Router Creation**: The Router is initialized with a reference to the Navigation Coordinator, which manages the overall navigation stack. The Router also receives any necessary data (e.g., a `User` object) that needs to be passed along.

2. **ViewModel Creation**: The Router creates the ViewModel, passing a reference to itself along with any necessary data.

3. **View Creation**: The Router creates the View, passing the ViewModel to it. The View then binds to the ViewModel, allowing it to display data and respond to user actions.

4. **Navigation**: When a navigation action is required (e.g., moving to a new screen), the ViewModel determines the correct action and calls the appropriate method on the Router.

## Example

This project includes examples of this architecture with scenes like `HomePage`, `MakeDonation`, and `PaymentPage`. Each scene follows the principles outlined above, demonstrating how easy it is to extend the application by adding new screens and handling navigation in a structured way.

## Benefits

- **Scalability**: As the application grows, this architecture allows for easy addition of new screens without violating the principles of clean architecture.
  
- **Separation of Concerns**: By dividing responsibilities among the Router, ViewModel, and View, the codebase remains maintainable and testable.

- **Flexibility**: The ViewModel can manage different navigation scenarios based on its state, providing flexibility in how navigation is handled.
