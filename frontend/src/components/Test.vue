<template>
  <div class="test">
    <p>Random Number:</p>
    {{ randomNumber }}
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: "Test",
  data () {
    return {
      randomNumber: 0
    }
  },
  methods: {
    getRandom () {
      this.randomNumber = this.getRandomFromBackend()
    },
    getRandomFromBackend () {
    const path = `http://localhost:5000/api/random`
    axios.get(path)
      .then(response => {
        this.randomNumber = response.data.randomNumber
      })
      .catch(error => {
        console.log(error)
      })
    },
  },
  created () {
    this.getRandom()
  }
}
</script>
