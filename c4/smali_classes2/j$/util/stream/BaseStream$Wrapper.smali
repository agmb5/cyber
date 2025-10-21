.class public final synthetic Lj$/util/stream/BaseStream$Wrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/stream/BaseStream;


# instance fields
.field final synthetic wrappedValue:Lj$/util/stream/BaseStream;


# direct methods
.method private synthetic constructor <init>(Lj$/util/stream/BaseStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    return-void
.end method

.method public static synthetic convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/util/stream/BaseStream$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/stream/BaseStream$Wrapper;-><init>(Lj$/util/stream/BaseStream;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic close()V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->close()V

    return-void
.end method

.method public final synthetic isParallel()Z
    .locals 1

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/AbstractPipeline;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic parallel()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->parallel()Lj$/util/stream/BaseStream;

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic sequential()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->sequential()Lj$/util/stream/BaseStream;

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unordered()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/BaseStream$Wrapper;->wrappedValue:Lj$/util/stream/BaseStream;

    invoke-interface {v0}, Lj$/util/stream/BaseStream;->unordered()Lj$/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method
