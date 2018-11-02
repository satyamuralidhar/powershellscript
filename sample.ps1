
configuration sample {
    node localhost {
        file hellofile {
            destinationpath = "E\ansible\fame.txt"
            ensure = "present"
            content = "text"
        }

    }
}
helloworldconfig