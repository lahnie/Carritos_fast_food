async function getOrders() {
  const url = "/data/orders.php";

  try {
    const response = await fetch(url);
    if (!response.ok) {
      throw new Error(`Response status: ${response.status}`);
    }

    const json = await response.json();
    console.log(json);
    return json;
  } catch (error) {
    console.error(error.message);
  }
}

async function drawOrders() {
  const orders = await getOrders();
  let ordersHTML = "";

  for (let index = 0; index < orders.length; index++) {
    const order = orders[index];

    const orderTemplate = `<a class="resultAnchor" href="orderDetailView.html?orderNumber=${order.id}">
                <div class="result">
                    <div class="numeropedido">pedido #${order.id}</div>
                    <div class="fecha">${order.created_date}</div>
                </div>
                </a>`;

    ordersHTML += orderTemplate;
  }

  const resultBox = document.getElementById("results");
  console.log(resultBox);
  resultBox.innerHTML = ordersHTML;
}

drawOrders();
