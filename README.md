# What makes a song popular?

![Music back round Best](https://user-images.githubusercontent.com/97486216/180366857-01c76bba-445e-469f-b123-70bef6e8782e.jpg)

Hundreds of thousands of artists have been creating music to reach the Top 20 in their genres. The likelyhood of success for any song to reach the Top 20 is low, so we plan to analyze Spotify's fan-based song streaming data to analyze streaming trends. 

We feel that fan-based song popularity is a better measure of popularity than music awards. Music awards, such as the Grammys, are not a good measure of popularity.

## [Grammy Awards](#grammy-awards)
- Songs must be nominated by members of the National Academy of Recording Arts and Sciences (NARAS) for consideration into the awards
- Nominated songs are then reviewed by 150 recording industry experts for eligibility
- Songs which make it through the vetting process are put up for a vote to voting members
- Academy members are required to vote solely based upon quality, without consideration for sales, chart performance, personal friendships, regional preferences or company loyalty

Across millions of songs, hundreds of thousand of artists, and hundreds of genres


Music is the combination of rhythm and harmony that creates melodies and songs.
It goes beyond the range of time, space, and cultures. Throughout the years, music has evolved and transformed helping to create various genres of songs, which are combinations of melodies and lyrics. 

From electric guitars to auto-tunes, songs have been through some massive transformations. Therefore, we have selected this topic to analyze how songs have evolved, for better or worse, throughout the years. We want to create a data frame that can project the genre(s) which have been consistently to be on the top.



# Questions we are looking to answer 

1. Which genres have been consistently on the top according to number of streams?
2. Which artists are the popular, by genre, according to number of streams?
3. How long have the genres and artists been at the top of the charts?
4. Which songs that haven't been in the Top 20 are likely to make it to the Top 20 based on their attributes, compared to attributes of past Top 20 songs?



## Source Data
Below are the sources that we will be using to answer the questions stated above.

https://charts.spotify.com/charts/overview/global 

### Flow Chart
![Flowchart Template - Main Frame](https://user-images.githubusercontent.com/97486216/180625518-b455c657-8762-4bd9-8033-e78cecdcbbaf.jpg)

### Database
   - For our project we are using Amazon's AWS RDS service.
        - We plan to use this webservice to best share our data when going through and performing our machine learning models.  This will also help with any other transformations we may implement during our analysis.
   - See below images for screenshots of the sucessfully created database and the ability to conect to said database.

![This is an Image](https://github.com/Azykan/Final-Project/blob/main/Resources/AWS_database_view.png)

![This is an Image](https://github.com/Azykan/Final-Project/blob/main/Resources/AWS_database.png)


# References
- Grammy Awards
https://en.wikipedia.org/wiki/Grammy_Awards#Entry_process_and_selection_of_nominees


