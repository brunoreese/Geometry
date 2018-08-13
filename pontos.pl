use strict;
use warnings;
use Data::Dumper;

# To run this well Use sudo cpan Data::Dumper
#To do
# make subroutines for a cleaner code

sub main {

    my @vetor;
    my $x1;
    my $x2;
    my $y1;
    my $y2;

    for (my $i = 0; $i <= 2; $i++) {
        print "Put the letter of the point : "; #A
        my $ponto = <STDIN>;
        chomp($ponto);                                          #this block will make an array inside another array

        print("Put the valor of assis X: ");#3
        my $EixoX = <STDIN>;
        chomp($EixoX);

        print("Put the valor of assis Y: ");#2
        my $EixoY = <STDIN>;
        chomp($EixoY);

        my @lista = ($ponto, $EixoX, $EixoY);     #make arrray A 3 2 --------A(3,2)  coordinate in cartesian plane
        push @vetor, \@lista;                     #insert lista inside vetor

    }

    #print Dumper $vetor[0][0];


    foreach my $file (@vetor) {          #dumper helps to see the array and valors
        print Dumper $file;

    }

    print("Chosse one letter");
    my $value1 = <STDIN>;                   #pick two Letters
    chomp($value1);

    print("Choose second letter");
    my $value2 = <STDIN>;
    chomp($value2);


    for (my $i=0;$i<=2;$i++){    #lazy one(you can change to @vetor length)

        if ($vetor[$i][0] eq $value1 ){   #vetor[$i][0] will refer to first element of the array(the letter[A])
# after finding it
            $x1 = $vetor[$i][1]; #get Assis X to the variable x1
            $y1 = $vetor[$i][2]; #get Assis Y to the variable y1

        }

           if ($vetor[$i][0] eq $value2 ){

            $x2 = $vetor[$i][1];    #iqual
            $y2 = $vetor[$i][2];

        }







    }


    my $distance = ((($x2-$x1) + ($y2-$y1)) ** 0.5);  #distance formula [the ** 0,5 is a square root(is easier to do exponential instead of a real square root system)]
    print ("Distance between lines :\n $distance \n");

    my $mediax = (($x1+$x2)/2);                             #The average point is another coordenate
    my $mediay = (($y1+$y2)/2);                             #
                                                            #
    print("O ponto médio é de FOO:($mediax,$mediay)\n");    #will print FOO: (3,2) example




        #print Dumper $x1;  that was just debuggin XD
        #print Dumper $y1;
        #print Dumper $x2;
        #print Dumper $y2;




    #-------------CALCULAR COEFICIENTE ANGULAR--------------------------

#      a =  y2-y1              Resultado para mostrar y=a(x)+b
#           _______
#           x2-x1               b = y-(a(x))

# A(x,y)

my $a = (($y2-$y1)/($x2-$x1));
my $b = $y1-($a*$x1);

    print ("the formula de $value1 é : $a (x) $b");
    # this is to calculate Y
    # if i have X assis, which formula will i use to calculate the Y
    #XD







}


main();
