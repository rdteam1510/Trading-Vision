import React from 'react';

import SearchPopup from "./SearchPopup";
import { useState } from 'react'



const ComparePopup = () => {
  const [open, setOpen] = useState(false);

  const handleClose = () => {
    setOpen(false)
  };


  return (
    
        <SearchPopup/>
   
  );
}

export default ComparePopup
