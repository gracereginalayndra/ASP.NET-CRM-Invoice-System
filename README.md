**README:**

# ASP.NET CRM Invoice Management System

A comprehensive Customer Relationship Management (CRM) system built with **ASP.NET Web Forms** and **MS Access** database, featuring robust invoice management, sales tracking, and automated reporting capabilities. This project demonstrates implementation of more than 18 key software development concepts as documented in the "Criterion C - Development" requirements.

## 📋 Project Overview

**Technology Stack:** ASP.NET Web Forms, MS Access, ADO.NET, HTML/CSS 
**Focus Areas:** Secure authentication, invoice processing, sales management, data analytics

## ✨ Key Features & Technical Implementations

### 🔐 Security & Authentication
1. **Secure Login Page**: Username/password authentication with database validation
2. **Session Management**: User tracking across pages with persistent sessions
3. **Authorization Controls**: Role-based access and data protection

### 📊 Data Management
4. **Data Binding**: Dynamic GridView binding for real-time data display
5. **Custom GridView Controls**: 
   - Inline deletion functionality
   - Automatic column calculations
   - Real-time total computation
6. **Database Normalization**: Optimized table structures with relationships
7. **Complex SQL Queries**: Multi-table joins and advanced filtering

### 🧠 Programming Concepts Implemented
8. **Conditional Logic**: If-Else-Then statements for validation and flow control
9. **Loops**: 
   - While loops for database reading and auto-number generation
   - For loops for efficient array processing
   - Nested loops for multi-table operations
10. **Arrays & Sorting**:
    - Two-dimensional arrays for data structuring
    - Bubble sort algorithms for ranking salespersons
11. **Date Functions**: Automated date calculations for invoices and reports
12. **Panels**: Dynamic UI controls for show/hide functionality
13. **List Boxes**: Display sorted salesperson rankings

### 💾 Database Operations
14. **Data Manipulation Language (DML)**:
    - SELECT queries for data retrieval
    - INSERT for new record creation
    - UPDATE for data modification
    - DELETE for record removal
15. **Database Objects**: DataReader objects for efficient data access
16. **Stored Procedures**: Parameterized queries for security and performance

## 🏗️ System Architecture

### Frontend Layer
- **ASP.NET Web Forms**: Server-side controls and event-driven programming
- **Responsive Design**: User-friendly interface with intuitive navigation
- **Client-Side Validation**: JavaScript validation for enhanced user experience

### Business Logic Layer
- **C# Code-behind**: Business rules and application logic
- **Object-Oriented Design**: Modular, maintainable code structure
- **Error Handling**: Comprehensive exception management

### Data Access Layer
- **ADO.NET**: Database connectivity and operations
- **MS Access Database**: Relational database management
- **Connection Pooling**: Optimized database connections

## 📁 Project Structure

```
ASP.NET-CRM-Invoice-System/
├── App_Code/                    # Business logic classes
├── App_Data/                    # Database files (CS database.mdb)
├── Images/                      # Application images
├── Pages/                       # ASP.NET Web Forms
│   ├── Login.aspx              # Authentication page
│   ├── MainMenu.aspx           # Dashboard
│   ├── InvoiceManagement/      # Invoice-related pages
│   ├── CustomerManagement/     # Customer CRUD operations
│   ├── SalespersonManagement/  # Salesperson tracking
│   ├── ProductManagement/      # Product catalog
│   └── Reports/                # Reporting pages
├── web.config                  # Application configuration
└── Global.asax                # Application lifecycle events
```
