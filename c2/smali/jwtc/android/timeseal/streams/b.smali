.class public Ljwtc/android/timeseal/streams/b;
.super Ljava/io/OutputStream;
.source "b.java"


# instance fields
.field private final a:Ljwtc/android/timeseal/streams/c;


# direct methods
.method public constructor <init>(Ljwtc/android/timeseal/streams/c;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 27
    iput-object p1, p0, Ljwtc/android/timeseal/streams/b;->a:Ljwtc/android/timeseal/streams/c;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Ljwtc/android/timeseal/streams/b;->a:Ljwtc/android/timeseal/streams/c;

    invoke-virtual {v0}, Ljwtc/android/timeseal/streams/c;->jdField_try()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Ljwtc/android/timeseal/streams/b;->a:Ljwtc/android/timeseal/streams/c;

    invoke-virtual {v0, p1}, Ljwtc/android/timeseal/streams/c;->a(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Ljwtc/android/timeseal/streams/b;->a:Ljwtc/android/timeseal/streams/c;

    invoke-virtual {v0, p1, p2, p3}, Ljwtc/android/timeseal/streams/c;->a([BII)V

    return-void
.end method
