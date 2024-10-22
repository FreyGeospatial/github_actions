          ##################################################
          # This stops prod from running and failing due to
          # branch protections, if running in a branch other 
          # than 'main'.
          
          # For example, 'new-branch' will only run in dev
          # environment.

          ##################################################
          # Get the current Git branch name
          current_branch=$(git rev-parse --abbrev-ref HEAD)


          # Next, we initialize the stringified array based on the current branch.
          # GitHub actions cannot read well arrays from environmental/output variables
          # so we need to stringify them before loading as JSON.
          # jq package seems to be the easiest way to do so.

          # jq comes standard with GitHub Actions. For use on
          # MacOS for local testing, use `brew jq`.
          MY_PATH='./.github/files/environments.txt'

          if [ "$current_branch" == "main" ]; then
              my_array=$(cat $MY_PATH | jq -R -s -c 'split("\n")')
          else
              my_array=$(cat $MY_PATH | jq -R -s -c 'split("\n")[0:1]')
          fi

          echo ${my_array}