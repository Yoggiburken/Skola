#!/usr/bin/env perl
use strict;
use warnings;

print "Singla slant!!\n";
my @Score;
my @Competitors=("");

print "Hur många spelare är ni?\n";
my $NOPlayers=<>;

$#Score=$NOPlayers;
$#Competitors=$NOPlayers;

for(my $i=0; $i<$NOPlayers; $i++){
    $Score[$i]=0;
}


my $chance = $NOPlayers*100;
my $play = 1;
my $nopoints =1;
my $input=""; 
my $coin = "";
my $pointbuf=0;

for(my $i=0, my $counter=1; $i<$NOPlayers; $i++){
    print "Namn på spelare $counter:";
    $counter++;
    chomp($Competitors[$i]=<>);
}

while($play==1){
    for(my $i=0; $i<$NOPlayers; $i++){
        print "$Competitors[$i] Poäng: $Score[$i]\n";
    }

    print "Vill ni fortsätta? j/n \n";
    
    while(($input ne 'j') && ($input ne 'n')){
        chomp($input=<>);
    }
    if($input eq 'j'){
        $coin = int(rand($chance));
        for(my $i=0; $i<$NOPlayers; $i++){
            if($coin <= 85 * ($i+1)){
                print "$Competitors[$i] vann och fick 1 poäng!\n";
                $Score[$i]+=1;
                $nopoints=0;
                last;
            }
        }
        if($nopoints){
            if($coin<=95*$NOPlayers){
                print "Myntet landade på sidan, spelarna byter poäng med varandra!\n";
                my @copy;               $#copy=$NOPlayers;
                my @random;             $#random=$NOPlayers;
                
                for(my $i=0; $i<$NOPlayers; $i++){
                    $random[$i] = int(rand($NOPlayers));
                    if($i!=0){
                        for(my $j=0; $j<$i; $j++){
                            if($random[$j] == $random[$i]){
                                $i--;
                            }
                        }
                    }
                }
                for(my $i=0; $i<$NOPlayers; $i++){
                    $copy[$i] = $Score[$random[$i]];
                }
                for(my $i=0; $i<$NOPlayers; $i++){
                    $Score[$i]=$copy[$i];
                }
            } elsif($coin<=100*$NOPlayers){
                my $fisk=int(rand($NOPlayers));
                print "Det kom en flygande fisk som åt upp myntet!\n$Competitors[$fisk] förlorade sina poäng!\n";
                $Score[$fisk]=0;
            }
        }
        $nopoints=1;
        $input="";
    } elsif($input eq 'n'){
        $play =0;
    }
}


