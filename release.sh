git add -A && git commit -m "Release v0.0.1"
git tag '0.0.1'
git push --tags
git push origin
flutter pub publish
echo "Published successfully!"