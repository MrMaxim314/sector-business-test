import multer from 'multer';

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, './uploads');
  },
  filename: (req, file, cb) => {
    const fileName =
      file.originalname.split('.')[0] +
      Date.now() +
      `.${file.originalname.split('.')[1]}`;
    cb(null, fileName);
  },
});

const upload = multer({
  storage: storage,
  fileFilter: (req, file, cb) => {
    if (file.mimetype === 'image/png' || file.mimetype === 'image/jpeg') {
      cb(null, true);
    } else {
      cb(null, false);
      return cb(
        new Error(
          'Разрешенные форматы: .png, .jpg и размер файла не должен превышать 10mb',
        ),
      );
    }
  },
});

export default upload;
