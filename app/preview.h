#ifndef PREVIEW_H
#define PREVIEW_H

#include <QQuickImageProvider>

class QPdfPreview : public QQuickImageProvider
{
public:
    QPdfPreview() : QQuickImageProvider(QQuickImageProvider::Image) {}
    QImage requestImage(const QString &id, QSize *size, const QSize &requested_size);
};

#endif // PREVIEW_H
