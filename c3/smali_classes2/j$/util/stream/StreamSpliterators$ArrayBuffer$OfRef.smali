.class final Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;
.super Lj$/util/stream/StreamSpliterators$ArrayBuffer;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/Consumer;


# instance fields
.field final array:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lj$/util/stream/StreamSpliterators$ArrayBuffer;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->array:[Ljava/lang/Object;

    iget v1, p0, Lj$/util/stream/StreamSpliterators$ArrayBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/stream/StreamSpliterators$ArrayBuffer;->index:I

    aput-object p1, v0, v1

    return-void
.end method
