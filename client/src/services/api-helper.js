import axios from 'axios';

const baseURL = "https://player-are-u-api.herokuapp.com/"

// const baseURL = "http://localhost:3000";

const api = axios.create({
  baseURL: baseURL
})

// ============== Auth ================
export const registerUser = async (registerData) => {
  try {
    const resp = await api.post('/users', { user: registerData });
    api.defaults.headers.common.authorization = `Bearer ${resp.data.token}`
    localStorage.setItem('authToken', resp.data.token);
    return resp.data.user
  }
  catch (err) {
    return { error: "Invalid credentials" }
  }
}
export const loginUser = async (loginData) => {
  try {
    const resp = await api.post('/auth/login', loginData);
    api.defaults.headers.common.authorization = `Bearer ${resp.data.token}`;
    localStorage.setItem('authToken', resp.data.token);
    return resp.data.user;
  }
  catch (err) {
    return { error: "Invalid credentials" }
  }
}
export const verifyUser = async () => {
  const token = localStorage.getItem('authToken');
  if (token) {
    api.defaults.headers.common.authorization = `Bearer ${token}`;
    const resp = await api.get('/auth/verify');
    return resp.data;
  }
  return false;
}
//========Game Genre=====//
export const getAllGameGenres = async () => {
  const resp = await api.get('/game_genres');
  return resp.data;
}

export const getOneGameGenre = async (id) => {
  const resp = await api.get(`/game_genres/${id}`);
  return resp.data;
}

//========Genre GAMES=====//

export const getAllGames = async () => {
  const resp = await api.get('/games');
  return resp.data;
}

export const getGenreGames = async (id) => {
  const resp = await api.get(`/game_genres/${id}/games`);
  return resp.data;
}

export const postGenreGame = async (gameData) => {
  const resp = await api.post(`/game_genres/`, gameData);
  return resp.data;
}

export const putGenreGame = async (id, gameData) => {
  const resp = await api.put(`/game_genres/${id}/games`, gameData);
  return resp.data;
}

export const deleteGenreGame = async (id) => {
  const resp = await api.delete(`/game_genres/${id}/games`);
  return resp.data;
}

//==========Games============//

export const getGames = async (id) => {
  const resp = await api.get(`/game_genres/${id}/games`);
  return resp.data;
}

export const postGame = async (id, gameData) => {
  console.log(gameData)
  gameData.genre_id = id
  const resp = await api.post(`/games`, gameData);
  return resp.data;
}

export const putGame = async (id, gameData) => {
  console.log("test", gameData)
  const resp = await api.put(`/games/${id}`, gameData);
  return resp.data;
}

export const deleteGame = async (id) => {
  const resp = await api.delete(`/games/${id}`);
  return resp.data;
}