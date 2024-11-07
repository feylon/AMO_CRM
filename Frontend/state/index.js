import { defineStore } from 'pinia'
import { url } from '../url';

export const admin = defineStore('storeId', {
  state: () => {
    return {
      count: 0,
      Profile : 
      {

      }

    }
  },
getters :
{
  async profile(){
    const token = localStorage.token;
    let data = await fetch(`${url}admin/profile`,{
      method : "GET",
      headers: {
        "Content-Type": "application/json",
        "Authorization": `Bearer ${token}` 
      }
    });
    console.log(data.status)
    data = await data.json();
    
    this.Profile = data;
    return (this.Profile)
  }
}
});

export default admin;