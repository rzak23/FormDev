const { src, dest, watch } = require('gulp');
const fileInclude = require('gulp-file-include');
const flatten = require('gulp-flatten');

// Task untuk memproses file HTML
function html() {
  return src(['src/**/*.html', '!src/partials/**']) // Source file HTML
    .pipe(fileInclude({
      prefix: '@@', // Default prefix untuk include
      basepath: '@file' // Relative path dari file
    }))
    .pipe(flatten())
    .pipe(dest('pages')); // Output file HTML yang telah di-include
}

// Task untuk watch perubahan file HTML
function watchFiles() {
  watch(['src/**/*.html', 'src/partials/*.html'], html);
}

exports.default = watchFiles;
exports.html = html;