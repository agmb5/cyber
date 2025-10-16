.class public final synthetic Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/Supplier;
.implements Lj$/util/function/BiConsumer;
.implements Lj$/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;

.field public static final synthetic INSTANCE$1:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;

.field public static final synthetic INSTANCE$2:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;->INSTANCE$1:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;

    .line 2
    new-instance v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;->INSTANCE$2:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;

    .line 3
    new-instance v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;->INSTANCE:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;

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

    check-cast p1, [D

    check-cast p2, [D

    sget v0, Lj$/util/stream/DoublePipeline;->$r8$clinit:I

    const/4 v0, 0x0

    aget-wide v0, p2, v0

    invoke-static {p1, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x1

    aget-wide v0, p2, v0

    invoke-static {p1, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    add-double/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 1

    sget v0, Lj$/util/stream/IntPipeline;->$r8$clinit:I

    new-array p1, p1, [Ljava/lang/Integer;

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    sget v0, Lj$/util/stream/DoublePipeline;->$r8$clinit:I

    const/4 v0, 0x4

    new-array v0, v0, [D

    return-object v0
.end method
