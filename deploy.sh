#!/bin/bash

rm -rf docsData

echo "Building DocC documentation for ModularSlothCreator..."

xcodebuild  -derivedDataPath docsData -scheme SlothCreator -destination 'platform=iOS Simulator,name=iPhone 13 Pro Max'  docbuild

echo "Copying DocC archives to doc_archives..."

mkdir doc_archives

cp -R `find docsData -type d -name "*.doccarchive"` doc_archives

mkdir docs

for ARCHIVE in doc_archives/*.doccarchive; do
    cmd() {
        echo "$ARCHIVE" | awk -F'.' '{print $1}' | awk -F'/' '{print tolower($2)}'
    }
    ARCHIVE_NAME="$(cmd)"
    echo "Processing Archive: "./$ARCHIVE
    $(xcrun --find docc) process-archive transform-for-static-hosting ./"$ARCHIVE" --hosting-base-path SlothCreator --output-path docs
done

git config user.name "$DOCC_GITHUB_NAME"

git config user.email "$DOCC_GITHUB_EMAIL"

# Change the GitHub URL to your repository
echo "effective url is" ${DOCC_GITHUB_USERNAME}${DOCC_GITHUB_API_TOKEN};

git remote set-url origin https://$DOCC_GITHUB_USERNAME:$DOCC_GITHUB_API_TOKEN@github.com/samir-ware/SlothCreator.git
git fetch

git add .
git commit -m "Updated DocC documentation"
git push origin main 


