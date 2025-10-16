.class Ljwtc/android/timeseal/TimesealingSocket$a;
.super Ljava/io/OutputStream;
.source "TimesealingSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/timeseal/TimesealingSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:[B

.field private final jdField_do:Ljava/io/OutputStream;

.field private final jdField_for:[B

.field private final jdField_if:Ljava/io/ByteArrayOutputStream;

.field private jdField_int:J

.field final synthetic this$0:Ljwtc/android/timeseal/TimesealingSocket;


# direct methods
.method public constructor <init>(Ljwtc/android/timeseal/TimesealingSocket;Ljava/io/OutputStream;)V
    .locals 2

    .line 197
    iput-object p1, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->this$0:Ljwtc/android/timeseal/TimesealingSocket;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-string p1, "Timestamp (FICS) v1.0 - programmed by Henrik Gram."

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->jdField_for:[B

    const/16 p1, 0x2710

    new-array p1, p1, [B

    .line 134
    iput-object p1, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->a:[B

    .line 136
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->jdField_if:Ljava/io/ByteArrayOutputStream;

    const-wide/16 v0, 0x0

    .line 137
    iput-wide v0, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->jdField_int:J

    .line 200
    iput-object p2, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->jdField_do:Ljava/io/OutputStream;

    return-void
.end method

.method private final a([BJ)I
    .locals 5

    .line 159
    array-length v0, p1

    .line 160
    iget-object v1, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->a:[B

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object p1, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->a:[B

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x18

    aput-byte v2, p1, v0

    .line 162
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 163
    iget-object p2, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->a:[B

    array-length p3, p1

    invoke-static {p1, v3, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    array-length p1, p1

    add-int/2addr v1, p1

    .line 165
    iget-object p1, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->a:[B

    add-int/lit8 p2, v1, 0x1

    const/16 p3, 0x19

    aput-byte p3, p1, v1

    .line 167
    rem-int/lit8 p1, p2, 0xc

    rsub-int/lit8 p1, p1, 0xc

    add-int/2addr p1, p2

    :goto_0
    if-ge p2, p1, :cond_0

    .line 169
    iget-object p3, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->a:[B

    add-int/lit8 v0, p2, 0x1

    const/16 v1, 0x31

    aput-byte v1, p3, p2

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_1

    .line 171
    iget-object p3, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->a:[B

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

    .line 174
    iget-object p3, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->a:[B

    add-int/lit8 v0, p2, 0xb

    aget-byte v1, p3, v0

    .line 176
    aget-byte v2, p3, p2

    aput-byte v2, p3, v0

    .line 177
    aput-byte v1, p3, p2

    add-int/lit8 v0, p2, 0x9

    .line 178
    aget-byte v1, p3, v0

    add-int/lit8 v2, p2, 0x2

    .line 179
    aget-byte v4, p3, v2

    aput-byte v4, p3, v0

    .line 180
    aput-byte v1, p3, v2

    add-int/lit8 v0, p2, 0x7

    .line 181
    aget-byte v1, p3, v0

    add-int/lit8 v2, p2, 0x4

    .line 182
    aget-byte v4, p3, v2

    aput-byte v4, p3, v0

    .line 183
    aput-byte v1, p3, v2

    add-int/lit8 p2, p2, 0xc

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_3
    if-ge p2, p1, :cond_3

    .line 187
    iget-object v0, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->a:[B

    aget-byte v1, v0, p2

    iget-object v2, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->jdField_for:[B

    aget-byte v4, v2, p3

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, p2

    add-int/lit8 p3, p3, 0x1

    .line 188
    array-length v0, v2

    rem-int/2addr p3, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-ge v3, p1, :cond_4

    .line 191
    iget-object p2, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->a:[B

    aget-byte p3, p2, v3

    add-int/lit8 p3, p3, -0x20

    int-to-byte p3, p3

    aput-byte p3, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 192
    :cond_4
    iget-object p2, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->a:[B

    add-int/lit8 p3, p1, 0x1

    const/16 v0, -0x80

    aput-byte v0, p2, p1

    add-int/lit8 p1, p3, 0x1

    const/16 v0, 0xa

    .line 193
    aput-byte v0, p2, p3

    return p1
.end method


# virtual methods
.method public write(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->this$0:Ljwtc/android/timeseal/TimesealingSocket;

    monitor-enter v0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 143
    :try_start_0
    iget-object p1, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->jdField_if:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->this$0:Ljwtc/android/timeseal/TimesealingSocket;

    invoke-static {v3}, Ljwtc/android/timeseal/TimesealingSocket;->access$000(Ljwtc/android/timeseal/TimesealingSocket;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 145
    iget-wide v3, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->jdField_int:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    const-wide/16 v1, 0x1

    add-long/2addr v1, v3

    .line 147
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Ljwtc/android/timeseal/TimesealingSocket$a;->a([BJ)I

    move-result p1

    .line 148
    iget-object v3, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->jdField_do:Ljava/io/OutputStream;

    iget-object v4, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->a:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 149
    iget-object p1, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->jdField_do:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 150
    iget-object p1, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->jdField_if:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 151
    iput-wide v1, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->jdField_int:J

    goto :goto_0

    .line 153
    :cond_1
    iget-object v1, p0, Ljwtc/android/timeseal/TimesealingSocket$a;->jdField_if:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 155
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
