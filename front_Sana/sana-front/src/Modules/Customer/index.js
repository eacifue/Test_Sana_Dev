import { React, useState } from 'react';
import { BASE_API_KEY } from '../../constants'

const Customer = () => {

  const [formData, setFormData] = useState({
    CustomerID: "",
    FirstName: "",
    LastName: "",
    Email: "",
  });

  const [message, setMessage] = useState("");

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData({
      ...formData,
      [name]: value,
    });
  };

  const addCustomer = async (e) => {

    const requestOptions = {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(formData),
      };
      try {
        const response = await fetch(BASE_API_KEY + 'api/customers', requestOptions);
  
        if (response.ok) {
          const data = await response.json();
          setMessage("Customer added successfully!");
          console.log("Response from API:", data);     
  
        } else {
          setMessage("Failed to add customer");
        }
      } catch (error) {
        console.error("Error while sending request:", error);
        setMessage("Error while connecting to the API");
      }      
  
  }
  const addOrder = async (e) => {
    const savedCart = JSON.parse(localStorage.getItem("cart")) 
    const totalAmount = savedCart.reduce((acc, item) => acc + item.price * item.quantity, 0);
    const orderDTO = {
      customerID: parseInt(formData.CustomerID), 
      totalAmount: totalAmount,
      products: savedCart.map(item => ({
        productID: item.productID,
        quantity: item.quantity
      }))
    };

    const requestOptionsOrder= {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(orderDTO),
      };    

      const responseOrder = await fetch(BASE_API_KEY + 'api/order', requestOptionsOrder);
  
      if (responseOrder.ok) {
        const dataOrd = await responseOrder.json();
        setMessage("Customer added successfully!");
        console.log("Response from API:", dataOrd);
      } else {
        setMessage("Failed to add customer");
      }       
  }

  const handleSubmit = async (e) => {
    e.preventDefault();
    addCustomer();
    addOrder();
    localStorage.removeItem('cart');
  };

  return (
    
    <form onSubmit={handleSubmit}>
         <h2>Customer Information</h2>
      <div>
        <label htmlFor="customerID">Customer ID</label>
        <input
          type="text"
          id="CustomerID"
          name="CustomerID"
          value={formData.CustomerID}
          onChange={handleChange}
          required
        />
      </div>

      <div>
        <label htmlFor="firstName">First Name</label>
        <input
          type="text"
          id="FirstName"
          name="FirstName"
          value={formData.FirstName}
          onChange={handleChange}
          required
        />
      </div>

      <div>
        <label htmlFor="lastName">Last Name</label>
        <input
          type="text"
          id="LastName"
          name="LastName"
          value={formData.LastName}
          onChange={handleChange}
          required
        />
      </div>

      <div>
        <label htmlFor="email">Email</label>
        <input
          type="email"
          id="Email"
          name="Email"
          value={formData.Email}
          onChange={handleChange}
          required
        />
      </div>

      <button type="submit">Save Customer and Order</button>

      {message && <p>{message}</p>}
    </form>
  );
};

export default Customer;
