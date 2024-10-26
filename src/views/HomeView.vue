<script setup lang="ts">
type Game = {
  title: string
  image: string
  languages: string[]
  url: string
}

const data: Game[] = [
  {
    title: 'Tic tac toe',
    image: '/images/tictactoe.png',
    languages: ['HTML', 'CSS', 'JAVASCRIPT'],
    url: 'https://tictactoe-game.cedricsegura.dev',
  },
  {
    title: 'Meteor game',
    image: '/images/meteor.png',
    languages: ['HTML', 'CSS', 'JAVASCRIPT'],
    url: 'https://meteor-game.cedricsegura.dev',
  },
]

const handleClick = (url: string) => {
  window.open(url)
}
</script>

<template>
  <main>
    <div id="card-container">
      <div
        v-for="(item, index) in data"
        :key="index"
        class="card"
        @click="handleClick(item.url)"
      >
        <h2>{{ item.title }}</h2>
        <img :src="item.image" :alt="item.title" class="card-image" />
        <div id="ticket-container">
          <div
            v-for="(language, index) in item.languages"
            :key="index"
            class="ticket"
          >
            <p>{{ language }}</p>
          </div>
        </div>
      </div>
    </div>
  </main>
</template>

<style scoped>
#card-container {
  display: flex;
  gap: 1rem;
  margin-top: 1rem;
  margin: 20px;
}

.card {
  background-color: #f9f9f9;
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1rem;
  width: 300px;
  height: 300px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  cursor: pointer;
}

.card-image {
  padding-top: 20px;
  width: 260px;
  height: 150px;
}

.card h2 {
  margin-top: 0;
}

.card p {
  margin: 0;
}

#ticket-container {
  display: grid;
  grid-template-columns: 1fr 1fr;
  margin: 5px;
}

.ticket {
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.5);
  margin: 5px;
  border-radius: 8px;
  width: 100px;
  text-align: center;
}
</style>
