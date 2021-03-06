#ifndef PREVIEW_H
#define PREVIEW_H

#include <QQuickImageProvider>
#include <QSizeF>

class QPdfPreview : public QQuickImageProvider
{
public:
    QPdfPreview() : QQuickImageProvider(QQuickImageProvider::Image) {}
    QImage requestImage(const QString &id, QSize *size, const QSize &requested_size) override;
};

class QPreviewData : public QObject
{
    Q_OBJECT
public:
    Q_INVOKABLE int get_number_of_pages(QString fileName);
    QSizeF getPageSize(QString page);
};

#endif // PREVIEW_H
