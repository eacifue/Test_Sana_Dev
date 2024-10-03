import './App.css';
import Catalog from './Modules/Catalog';
import CartModule from './Modules/CartModule';
import Customer from './Modules/Customer';
import { BrowserRouter as Router, Route, Routes }from "react-router-dom";


function App() {
  return (
    <Router> 
      <div className="App">
        <header className="App-header">

        </header>
        <br></br>
        <div className="App-content">
        <Routes>
            <Route path="/" element={<Catalog />} />
            <Route path="/cart" element={<CartModule />} />
            <Route path="/customer" element={<Customer />} />
          </Routes>            
        </div>
      </div>
      </Router>         
  );
}

export default App;
