function fe_tests
  set -l modified_files_spec_paths (git diff --name-only --diff-filter=AMR | grep -E '\.(tsx|ts)$' | grep -vE 'spec\.(tsx|ts)$' | sed 's/\.[^.]*$/.spec&/')  
  set -l missing_tests (for file in $modified_files_spec_paths; test -f $file || echo $file; end)
  set -l existing_tests (for file in $modified_files_spec_paths; test -f $file && echo $file; end)
  
  echo "Related test files:"
  echo $existing_tests
  echo "Missing test files:"
  echo $missing_tests
  if count $existing_tests > /dev/null
    echo "Running tests..."
    yarn test $existing_tests
  end
  if count $missing_tests > /dev/null
    for file in $missing_tests
      set -l original_file (echo $file | sed 's/\.spec//')
      echo "Generating test for $original_file"
      yarn generate-spec --file=$original_file
    end
  end
end 