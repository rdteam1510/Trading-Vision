import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';


// replace console.* for disable log on production

  console.log = () => {}
  console.error = () => {}
  console.debug = () => {}
  console.warn = () => {}
  console.clear()


ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);

