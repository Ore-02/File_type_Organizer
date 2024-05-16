#!/bin/bash


organize_videos() {
    local directory=$1
    local vid_dest_directory=$2
    local vid_extension=*mp4
    for files in "$directory"/"$vid_extension"; do  #Iterate over the files with the extension in the source destination
        if [ ! -d "$vid_dest_directory" ]; then    #Check if the directory is existing
            mkdir -p $vid_dest_directory        #create the directory
            echo "Succesfully created $vid_dest_directory"
        fi
    echo "Moving file: $files"
    mv $files $vid_dest_directory                #Move the files to the destination directory
    done

}

organize_documents() {
    local directory=$1
    local doc_dest_directory=$2
    local doc_extension=(*docx *doc *pdf *xls)
    for ext in ${doc_extension[@]}; do #Iterate over the extension array
        for files in $directory/"$ext"; do #Iterate over the files with the extension in the source destination
            if [ ! -d "$doc_dest_directory" ]; then #Check if the directory is existing
                mkdir -p $doc_dest_directory #create the directory
                echo "Succesfully created $doc_dest_directory"
            fi
            mv $files $doc_dest_directory #Move the files to the destination directory
        done
    done
}

organize_music() {
    local directory=$1
    local mus_dest_directory=$2
    local mus_extension=*mp3
    for files in $directory/"$mus_extension"; do 
        if [ ! -d "$mus_dest_directory" ]; then 
                mkdir -p $mus_dest_directory 
                echo "Succesfully created $mus_dest_directory"
        fi
    mv $files $mus_dest_directory 
    done
}

organize_images() {
    local directory=$1
    local img_dest_directory=$2
    local img_extension=(*jpg *png *img)
    for ext in ${img_extension[@]}; do 
        for files in $directory/"$ext"; do 
            if [ ! -d "$img_dest_directory" ]; then 
                mkdir -p $img_dest_directory 
                echo "Succesfully created $img_dest_directory"
            fi
        mv $files $img_dest_directory
        done
    done
}

organize_program() {
    local directory=$1
    local prog_dest_directory=$2
    local prog_extension=(*zip *deb)
    for ext in ${prog_extension[@]}; do 
        for files in $directory/"$ext"; do 
            if [ ! -d "$prog_dest_directory" ]; then 
                mkdir -p $prog_dest_directory
                echo "Succesfully created $prog_dest_directory"
            fi
        mv $files $prog_dest_directory
        done 
    done
}

main() {
    #Read Source Direectory
    read -p "Input Source Directory: " directory
    eval directory=$directory # Expand the directory to the full path

    #Check which type of file you want to organize
    read -p "Organize videos (y/n): " organize_videos_option
    read -p "Organize documents (y/n): " organize_documents_option
    read -p "Organize images (y/n): " organize_images_option
    read -p "Organize music (y/n): " organize_music_option
    read -p "Organize programs (y/n): " organize_programs_option
    
    #Organize files if selected
    if [ "$organize_videos_option" = "y" ]; then
        read -p "Input Videos Destination Directory: " vid_dest_directory
        eval vid_dest_directory=$vid_dest_directory
        organize_videos $directory $vid_dest_directory
    fi

     if [ "$organize_documents_option" = "y" ]; then
        read -p "Input Documents Destination Directory: " doc_dest_directory
        eval doc_dest_directory=$doc_dest_directory
        organize_documents $directory $doc_dest_directory
    fi

     if [ "$organize_images_option" = "y" ]; then
        read -p "Input Images Destination Directory: " img_dest_directory
        eval img_dest_directory=$img_dest_directory
        organize_images $directory $img_dest_directory
    fi

     if [ "$organize_music_option" = "y" ]; then
        read -p "Input Music Destination Directory: " mus_dest_directory
        mus_dest_directory=$mus_dest_directory
        organize_music $directory $mus_dest_directory
    fi

     if [ "$organize_programs_option" = "y" ]; then
        read -p "Input Programs Destination Directory: " prog_dest_directory
        eval prog_dest_directory=$prog_dest_directory
        organize_program $directory $prog_dest_directory
    fi
}

main