CREATE TABLE tour_places (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    about TEXT,        -- Brief description within 20 words
    more_about TEXT,           -- Detailed description, 200 words
    image_link TEXT    -- URL to an image of the place
);



-- INSERT INTO tour_places (name, about, more_about, image_link)
-- VALUES (
--     'Place name',
--     'Short info',
--     'More about',
--     'Place link'
-- );

INSERT INTO tour_places (name, about, more_about, image_link)
VALUES (
    'Ladakh',
    'Promote Ladakhs stunning landscapes, monasteries, trekking, adventure sports, festivals, local culture, wildlife, and eco-friendly tourism experiences.',
    'Ladakh, located in the northernmost region of India, is a land of stark beauty and spiritual tranquility, known for its rugged mountains, high-altitude deserts, and crystal-clear lakes. Often called the "Land of High Passes," it attracts adventurers with opportunities for trekking, mountaineering, and motorbiking along challenging routes like the famous Leh-Manali Highway. Ladakhs rich cultural heritage is deeply influenced by Tibetan Buddhism, with ancient monasteries such as Hemis and Thiksey offering peaceful retreats. The region is also home to unique wildlife like snow leopards and rare migratory birds. Its dramatic landscapes and vibrant festivals make Ladakh a must-visit destination for nature lovers and cultural explorers alike.',
    'images/ladakh.png'
);


INSERT INTO tour_places (name, about, more_about, image_link)
VALUES (
    'Darjeeling',
    'Promote Darjeeling tea gardens, Toy Train, trekking, wildlife, monasteries, local culture, festivals, and eco-friendly tourism experiences',
    'Darjeeling, nestled in the foothills of the Himalayas, is a picturesque hill station known for its stunning landscapes, cool climate, and colonial charm. Famous for its tea plantations, Darjeeling produces some of the finest tea in the world. The town is also home to the UNESCO-listed Darjeeling Himalayan Railway, known as the "Toy Train," offering scenic rides through the mountains. Cultural diversity thrives here, with a blend of Tibetan, Nepalese, and Bengali influences, seen in its festivals, cuisine, and traditions. Adventure seekers can enjoy trekking, mountain biking, and paragliding, while nature lovers can explore the regions rich biodiversity and breathtaking views of Kanchenjunga.',
    'images/darjeeling.png'
);


