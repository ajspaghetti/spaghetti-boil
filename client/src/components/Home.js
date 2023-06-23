import React, { useState, useEffect } from "react";

function Home() {
  const [users, setUsers] = useState([]);

  useEffect(() => {
    fetch("/users")
      .then((response) => {
        if (!response.ok) {
          throw new Error(`Request failed with status ${response.status}`);
        }
        return response.json();
      })
      .then((responseData) => {
        console.log(responseData); // Log the response to inspect the data
        setUsers(responseData.users); // Update the state with the correct data
      })
      .catch((error) => {
        console.error("Fetch error:", error);
      });
  }, []);

  console.log(users);

  return (
    <>
      <div>Home</div>
      <div>
        <h1>Test</h1>
        <div></div>
      </div>
    </>
  );
}

export default Home;