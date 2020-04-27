import consumer from "./consumer";

consumer.subscriptions.create({ channel: 'StatusChannel', room: 'incidents-room' }, {
  received(data) {
    this.appendLine(data)
  },

  appendLine(data) {
    const html = this.createLine(data)
    const element = document.querySelector("[data-role='new-incidents']")
    element.insertAdjacentHTML("afterbegin", html)
  },

  createLine(data) {
    return `<article class="status-line">
      <div>${data['title']}</div>
      <small>message from: ${data['initiator']}</small>
    </article>`
  }
});
