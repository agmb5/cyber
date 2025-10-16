.class public Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;
.super Ljava/io/OutputStream;
.source "TimesealingSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/ics/TimesealingSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CryptOutputStream"
.end annotation


# instance fields
.field private buffer:[B

.field private final byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

.field private final outputStreamToDecorate:Ljava/io/OutputStream;

.field final synthetic this$0:Ljwtc/android/chess/ics/TimesealingSocket;

.field private final timesealKey:[B


# direct methods
.method public constructor <init>(Ljwtc/android/chess/ics/TimesealingSocket;Ljava/io/OutputStream;)V
    .locals 0

    .line 17
    iput-object p1, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->this$0:Ljwtc/android/chess/ics/TimesealingSocket;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 11
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    const-string p1, "Timestamp (FICS) v1.0 - programmed by Henrik Gram."

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->timesealKey:[B

    const/16 p1, 0x2710

    new-array p1, p1, [B

    .line 18
    iput-object p1, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->buffer:[B

    .line 19
    iput-object p2, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->outputStreamToDecorate:Ljava/io/OutputStream;

    return-void
.end method

.method private crypt([BJ)I
    .locals 5

    .line 39
    array-length v0, p1

    .line 40
    iget-object v1, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->buffer:[B

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget-object p1, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x18

    aput-byte v2, p1, v0

    .line 43
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 44
    iget-object p2, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->buffer:[B

    array-length p3, p1

    invoke-static {p1, v3, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    array-length p1, p1

    add-int/2addr v1, p1

    .line 46
    iget-object p1, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->buffer:[B

    add-int/lit8 p2, v1, 0x1

    const/16 p3, 0x19

    aput-byte p3, p1, v1

    .line 48
    rem-int/lit8 p1, p2, 0xc

    rsub-int/lit8 p1, p1, 0xc

    add-int/2addr p1, p2

    :goto_0
    if-ge p2, p1, :cond_0

    .line 49
    iget-object p3, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->buffer:[B

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x31

    aput-byte v1, p3, p2

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_1

    .line 53
    iget-object p3, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->buffer:[B

    aget-byte v0, p3, p2

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_2
    if-ge p2, p1, :cond_2

    .line 57
    iget-object p3, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->buffer:[B

    add-int/lit8 v0, p2, 0xb

    aget-byte v1, p3, v0

    .line 58
    aget-byte v2, p3, p2

    aput-byte v2, p3, v0

    .line 59
    aput-byte v1, p3, p2

    add-int/lit8 v0, p2, 0x9

    .line 60
    aget-byte v1, p3, v0

    add-int/lit8 v2, p2, 0x2

    .line 61
    aget-byte v4, p3, v2

    aput-byte v4, p3, v0

    .line 62
    aput-byte v1, p3, v2

    add-int/lit8 v0, p2, 0x7

    .line 63
    aget-byte v1, p3, v0

    add-int/lit8 v2, p2, 0x4

    .line 64
    aget-byte v4, p3, v2

    aput-byte v4, p3, v0

    .line 65
    aput-byte v1, p3, v2

    add-int/lit8 p2, p2, 0xc

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_3
    if-ge p2, p1, :cond_3

    .line 70
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->buffer:[B

    aget-byte v1, v0, p2

    iget-object v2, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->timesealKey:[B

    aget-byte v4, v2, p3

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, p2

    add-int/lit8 p3, p3, 0x1

    .line 71
    array-length v0, v2

    rem-int/2addr p3, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-ge v3, p1, :cond_4

    .line 75
    iget-object p2, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->buffer:[B

    aget-byte p3, p2, v3

    add-int/lit8 p3, p3, -0x20

    int-to-byte p3, p3

    aput-byte p3, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 78
    :cond_4
    iget-object p2, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->buffer:[B

    add-int/lit8 p3, p1, 0x1

    const/16 v0, -0x80

    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x1

    const/16 v0, 0xa

    .line 79
    aput-byte v0, p2, p3

    return p1
.end method


# virtual methods
.method public write(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 25
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->this$0:Ljwtc/android/chess/ics/TimesealingSocket;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object p1, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 27
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->this$0:Ljwtc/android/chess/ics/TimesealingSocket;

    .line 28
    invoke-static {v3}, Ljwtc/android/chess/ics/TimesealingSocket;->access$000(Ljwtc/android/chess/ics/TimesealingSocket;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 26
    invoke-direct {p0, p1, v1, v2}, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->crypt([BJ)I

    move-result p1

    .line 29
    iget-object v1, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->outputStreamToDecorate:Ljava/io/OutputStream;

    iget-object v2, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->buffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 30
    iget-object p1, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->outputStreamToDecorate:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 31
    iget-object p1, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 32
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 34
    :cond_0
    iget-object v0, p0, Ljwtc/android/chess/ics/TimesealingSocket$CryptOutputStream;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    return-void
.end method
