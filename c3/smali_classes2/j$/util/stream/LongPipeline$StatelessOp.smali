.class abstract Lj$/util/stream/LongPipeline$StatelessOp;
.super Lj$/util/stream/LongPipeline;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lj$/util/stream/LongPipeline;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/AbstractPipeline;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/LongPipeline;-><init>(Lj$/util/stream/AbstractPipeline;I)V

    return-void
.end method


# virtual methods
.method final opIsStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic parallel()Lj$/util/stream/LongStream;
    .locals 0

    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->parallel()Lj$/util/stream/BaseStream;

    return-object p0
.end method

.method public final bridge synthetic sequential()Lj$/util/stream/LongStream;
    .locals 1

    invoke-virtual {p0}, Lj$/util/stream/AbstractPipeline;->sequential()Lj$/util/stream/BaseStream;

    move-object v0, p0

    check-cast v0, Lj$/util/stream/LongStream;

    return-object v0
.end method
