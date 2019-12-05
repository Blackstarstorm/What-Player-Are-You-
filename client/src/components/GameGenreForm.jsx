import React from 'react'

export default function GameGenreForm(props) {
  return (
    <div className='genre_type'>

      {
        props.genres.map(genres => (
        <>
          <h2>"{props.genres.genre}"Genre</h2>
          <h3>Description:{props.genres.description}
          </h3>
             props.genre_facts.map(facts => (
             <h2>Facts:{props.facts.fact}</h2>
               )) props.genre_images.map(image => (
               <img src={props.image.img_url} />
            ))
        </>))  
          }

    </div>
  )
}
