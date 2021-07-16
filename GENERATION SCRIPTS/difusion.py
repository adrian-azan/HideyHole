import random as ran

width = 150
height = 40

grid = [[1 for j in range(width)] for i in range(height)]
print(len(grid[0]))
space = 0
spaceGoal = 1000
endurance = 1000
size = 1

while space < spaceGoal:
    endurance = 1000
    Hx = int(width/2)
    Hy = int(height/2)

    while endurance > 0:
        direction = int(ran.randint(0,4))
        if direction == 0 and Hx + size < width-1:
            Hx += size
        elif direction == 1 and Hy + size < height:
            Hy += size
        elif direction == 2 and Hx - size > 0:
            Hx -= size
        elif direction == 3 and Hy - size > 0:
            Hy -= size

        
        if grid[Hy][Hx] == 1:
            grid[Hy][Hx] = 0
            space+=1
        endurance-=1




with open("diffusion.txt",'w') as output:
    for row in range(height):
        for col in range(width):
            if grid[row][col] == 1:
                output.write("#")
            else:
                output.write(' ')
        output.write("\n")
