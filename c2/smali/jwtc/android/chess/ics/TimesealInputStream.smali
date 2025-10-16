.class Ljwtc/android/chess/ics/TimesealInputStream;
.super Ljava/io/InputStream;
.source "TimesealInputStream.java"


# instance fields
.field private final a:Ljwtc/android/chess/ics/TimesealPipe;


# direct methods
.method public constructor <init>(Ljwtc/android/chess/ics/TimesealPipe;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 15
    iput-object p1, p0, Ljwtc/android/chess/ics/TimesealInputStream;->a:Ljwtc/android/chess/ics/TimesealPipe;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 19
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealInputStream;->a:Ljwtc/android/chess/ics/TimesealPipe;

    invoke-virtual {v0}, Ljwtc/android/chess/ics/TimesealPipe;->_mthcase()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealInputStream;->a:Ljwtc/android/chess/ics/TimesealPipe;

    invoke-virtual {v0}, Ljwtc/android/chess/ics/TimesealPipe;->_mthnew()V

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealInputStream;->a:Ljwtc/android/chess/ics/TimesealPipe;

    invoke-virtual {v0}, Ljwtc/android/chess/ics/TimesealPipe;->_mthfor()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealInputStream;->a:Ljwtc/android/chess/ics/TimesealPipe;

    invoke-virtual {v0, p1, p2, p3}, Ljwtc/android/chess/ics/TimesealPipe;->_mthif([BII)I

    move-result p1

    return p1
.end method
