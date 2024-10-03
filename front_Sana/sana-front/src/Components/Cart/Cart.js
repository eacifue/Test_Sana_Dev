import React, { useState, useEffect } from "react";
import { Link } from 'react-router-dom';
import './Cart.css';

const Cart = () => {
  const [cart, setCart] = useState([]);
  const [total, setTotal] = useState(0);

  const aggregateCartItems = (items) => {
    const aggregatedItems = items.reduce((acc, item) => {
      const existingItem = acc.find((i) => i.productID === item.productID);

      if (existingItem) {
        existingItem.quantity += item.quantity || 1;
      } else {
        acc.push({
          ...item,
          quantity: item.quantity || 1,
        });
      }

      return acc;
    }, []);

    return aggregatedItems;
  };

  useEffect(() => {
    const savedCart = JSON.parse(localStorage.getItem("cart")) || [];
    const aggregatedCart = aggregateCartItems(savedCart);
    setCart(aggregatedCart);
    calculateTotal(aggregatedCart);
  }, []);


  const calculateTotal = (cartItems) => {
    const totalAmount = cartItems.reduce((acc, item) => acc + item.price * item.quantity, 0);
    setTotal(totalAmount);
  };


  const handleQuantityChange = (event, productID) => {
    const newQuantity = parseInt(event.target.value, 10);

    const updatedCart = newQuantity === 0
      ? cart.filter(item => item.productID !== productID)
      : cart.map((item) => {
        if (item.productID === productID) {
          return { ...item, quantity: newQuantity };
        }
        return item;
      });


    setCart(updatedCart);
    calculateTotal(updatedCart);


    localStorage.setItem("cart", JSON.stringify(updatedCart));
  };

  return (
    <div className="cart-container">
      <div className="cart-items">
        <h2>Products in Cart</h2>
        <table>
          <thead>
            <tr>
              <th>Product ID</th>
              <th>Product Name</th>
              <th>Price</th>
              <th>Quantity</th>
              <th>Total</th>
            </tr>
          </thead>
          <tbody>
            {cart.map((item, index) => (
              <tr key={item.productID}>
                <td>{item.productID}</td>
                <td>{item.productName}</td>
                <td>${item.price}</td>
                <td>
                  {/* Campo de entrada para la cantidad */}
                  <input
                    type="number"
                    value={item.quantity}
                    min="0"
                    onChange={(event) => handleQuantityChange(event, item.productID)}
                    style={{ width: "50px" }}
                  />
                </td>
                <td>${(item.price * item.quantity).toFixed(2)}</td>
              </tr>
            ))}
          </tbody>
        </table>
        <div className="center">
        <Link className="App-link" to={`/customer`}>
            <h2>Advance To Payment</h2>
      </Link>
        </div>
      </div>

      <div>



      </div>
      <div className="separator"></div>

      <div className="cart-total">
        <h2>Total</h2>
        <p>${total.toFixed(2)}</p>
      </div>
    </div>
  );
};

export default Cart;
