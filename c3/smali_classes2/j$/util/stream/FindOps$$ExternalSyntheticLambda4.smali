.class public final synthetic Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/Supplier;
.implements Lj$/util/function/BiConsumer;
.implements Lj$/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;

.field public static final synthetic INSTANCE$1:Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;

.field public static final synthetic INSTANCE$2:Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;

    .line 2
    new-instance v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;->INSTANCE$1:Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;

    .line 3
    new-instance v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;->INSTANCE$2:Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, [J

    check-cast p2, [J

    sget v0, Lj$/util/stream/IntPipeline;->$r8$clinit:I

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 1

    sget v0, Lj$/util/stream/ReferencePipeline;->$r8$clinit:I

    new-array p1, p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lj$/util/stream/FindOps$FindSink$OfDouble;

    invoke-direct {v0}, Lj$/util/stream/FindOps$FindSink$OfDouble;-><init>()V

    return-object v0
.end method
