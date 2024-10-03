import { React, useState, useEffect } from 'react';
import { BASE_API_KEY } from '../../constants'
import { useApi } from '../../Hooks/useApi'
import TableCatalog from '../../Components/TableCatalog/TableCatalog';
import { Link } from 'react-router-dom'; // Import Link


const Catalog = () => {
  const [products, setProducts] = useState([]);
  const { data, isLoading, hasError } = useApi(BASE_API_KEY + 'api/products');


  const getCart = () => {
    const cart = JSON.parse(localStorage.getItem("cart")) || [];
    return cart;
  };    


  useEffect(() => {
    if (data != null) {
        setProducts(data)
        getCart()
    }

  }, [data]);

  if (isLoading) {
    return <div>Loading...</div>;
  }

  if (hasError) {
    return <div>Error loading pose details.</div>;
  }

  if (!products) {
    return <div>Loading...</div>;
  }  
  return (
        
    <div>

         <TableCatalog products={products}/>
  
         <Link className="App-link" to={`/cart`}> 
            <h2>Go to Cart</h2>
        </Link>

    </div> 

  );
};

export default Catalog;

