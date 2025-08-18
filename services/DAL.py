import mysql.connector


class Animal:
    def __init__(self, id, name, food):
        self.id = id
        self.name = name
        self.food = food


class Animals:
    def __init__(self,conn_str=None):
        self.conn_str = conn_str or {
            'host':'mysql',
            'user': 'chagay',
            'password': '1234',
            'port': 3306,
            'database': 'mydb'
        }

    def connect(self):
        """Connect to database."""
        return mysql.connector.connect(**self.conn_str)

    def get_all_data(self):
        animals=[]
        with self.connect() as conn:
            cursor = conn.cursor(dictionary=True)
            cursor.execute("SELECT * FROM data")
            for row in cursor:
                animals.append(Animal(
                    id=row['id'],
                    name=row['name'],
                    food=row['food']
                ))
        return animals



