.class public Ljwtc/android/chess/ics/TimesealOutputStream;
.super Ljava/io/OutputStream;
.source "TimesealOutputStream.java"


# instance fields
.field private final a:Ljwtc/android/chess/ics/TimesealPipe;


# direct methods
.method public constructor <init>(Ljwtc/android/chess/ics/TimesealPipe;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 18
    iput-object p1, p0, Ljwtc/android/chess/ics/TimesealOutputStream;->a:Ljwtc/android/chess/ics/TimesealPipe;

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

    .line 23
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealOutputStream;->a:Ljwtc/android/chess/ics/TimesealPipe;

    invoke-virtual {v0}, Ljwtc/android/chess/ics/TimesealPipe;->_mthtry()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealOutputStream;->a:Ljwtc/android/chess/ics/TimesealPipe;

    invoke-virtual {v0, p1}, Ljwtc/android/chess/ics/TimesealPipe;->a(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealOutputStream;->a:Ljwtc/android/chess/ics/TimesealPipe;

    invoke-virtual {v0, p1, p2, p3}, Ljwtc/android/chess/ics/TimesealPipe;->write([BII)V

    return-void
.end method
