echo "Enter a favourite team in IPL 2022"
echo "Exampls :: RCB CSK MI"
read teamName

MATCHES_PLAYED=14
won=0
lost=0
nrr=""
points=0

rcbTeam=("Duplessis" "Dinesh" "Maxwell" "Siraj")
miTeam=("Rohit" "Ishant" "Pollard" "Bumrah")
cskTeam=("Chahar" "Jadeja" "Rayudu" "Dhoni")

function errorHandler() {
    echo "Your Given Input is Invalid :( Please Try Again !!!"
}

function playOffs() {
    if [ $2 -le 4 ]
    then
        echo "$1 is eligible for play-offs"
    else
        echo "$1 is not eligible for play-offs"
    fi

}

function rolesPlayed() {
    echo $1 "is a $3 of Team-" $2
}

function rolesAndResponsibility() {
    case $1 in
        RCB)
            for player in ${rcbTeam[@]}
            do
                            case $player in
                                    Siraj)
                                            rolesPlayed $player $1 "Bowler"
                                            ;;
                                    Maxwell)
                                            rolesPlayed $player $1 "All-Rounder"
                                            ;;
                                    Dinesh)
                                            rolesPlayed $player $1 "Batsman"
                                            ;;
                                    *)
                                            rolesPlayed $player $1 "Captain"
                                        ;;
                        esac
            done
                    ;;
        MI)
            for player in ${miTeam[@]}
            do
                        case $player in
                                Bumrah)
                                        rolesPlayed $player $1 "Bowler"
                                        ;;
                                    Pollard)
                                            rolesPlayed $player $1 "All-Rounder"
                                            ;;
                                    Ishant)
                                            rolesPlayed $player $1 "Batsman"
                                            ;;
                                    *)
                                            rolesPlayed $player $1 "Captain"
                                            ;;
                            esac
            done
                    ;;
        *)
            for player in ${cskTeam[@]}
            do
                        case $player in
                                Chahar)
                                        rolesPlayed $player $1 "Bowler"
                                        ;;
                                    Jadeja)
                                            rolesPlayed $player $1 "All-Rounder"
                                            ;;
                                    Rayudu)
                                            rolesPlayed $player $1 "Batsman"
                                            ;;
                                    *)
                                            rolesPlayed $player $1 "Captain"
                                            ;;
                            esac
            done
                    ;;
    esac
}

function teamDetails() {
    lost=$((MATCHES_PLAYED-$2))
    points=$(($2*2))
    echo "Team : $teamName"
    echo "Matches Played : $MATCHES_PLAYED"
    echo "Position : $1"
    echo "Won : $2, Lost : $lost"
    echo "Run Rate : $3"
    echo "Points : $points"
    playOffs $teamName $1
    rolesAndResponsibility $teamName
}

case $teamName in
        MI)
        securedPlace=10
        won=4
        nrr="-0.506"
        teamDetails $securedPlace $won $nrr
                ;;
        RCB)
        securedPlace=4
        won=8
        nrr="-0.253"
        teamDetails $securedPlace $won $nrr
                ;;
        CSK)
        securedPlace=9
        won=4
        nrr="-0.203"
        teamDetails $securedPlace $won $nrr
                ;;
        *)
                errorHandler
                ;;
esac
