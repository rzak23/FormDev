const { src, dest, watch } = require('gulp');
const fileInclude = require('gulp-file-include');

// Task untuk memproses file HTML
function html() {
  return src(['src/*.html']) // Source file HTML
    .pipe(fileInclude({
      prefix: '@@', // Default prefix untuk include
      basepath: '@file' // Relative path dari file
    }))
    .pipe(dest('pages')); // Output file HTML yang telah di-include
}

// Task untuk watch perubahan file HTML
function watchFiles() {
  watch(['src/**/*.html', 'src/partials/*.html'], html);
}

exports.default = watchFiles;
exports.html = html;