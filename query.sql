CREATE TABLE tour_places (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    about TEXT,        -- Brief description within 20 words
    more_about TEXT,           -- Detailed description, 200 words
    image_link TEXT    -- URL to an image of the place
);



INSERT INTO tour_places (name, about, more_about, image_link)
VALUES (
    'Place name',
    'Short info',
    'More about',
    'Place link'
);

INSERT INTO tour_places (name, about, more_about, image_link)
VALUES (
    'Ladakh',
    'Promote Ladakhs stunning landscapes, monasteries, trekking, adventure sports, festivals, local culture, wildlife, and eco-friendly tourism experiences.',
    'Ladakh, located in the northernmost region of India, is a land of stark beauty and spiritual tranquility, known for its rugged mountains, high-altitude deserts, and crystal-clear lakes. Often called the "Land of High Passes," it attracts adventurers with opportunities for trekking, mountaineering, and motorbiking along challenging routes like the famous Leh-Manali Highway. Ladakhs rich cultural heritage is deeply influenced by Tibetan Buddhism, with ancient monasteries such as Hemis and Thiksey offering peaceful retreats. The region is also home to unique wildlife like snow leopards and rare migratory birds. Its dramatic landscapes and vibrant festivals make Ladakh a must-visit destination for nature lovers and cultural explorers alike.',
    'ladakh.png'
);

