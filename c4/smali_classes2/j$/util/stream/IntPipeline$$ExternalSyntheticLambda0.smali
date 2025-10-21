.class public final synthetic Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/Supplier;
.implements Lj$/util/function/BiConsumer;
.implements Lj$/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$1:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$2:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;->INSTANCE$1:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;

    .line 2
    new-instance v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;->INSTANCE:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;

    .line 3
    new-instance v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;->INSTANCE$2:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lj$/util/IntSummaryStatistics;

    check-cast p2, Lj$/util/IntSummaryStatistics;

    invoke-virtual {p1, p2}, Lj$/util/IntSummaryStatistics;->combine(Lj$/util/IntSummaryStatistics;)V

    return-void
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 1

    sget v0, Lj$/util/stream/LongPipeline;->$r8$clinit:I

    new-array p1, p1, [Ljava/lang/Long;

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    sget v0, Lj$/util/stream/DoublePipeline;->$r8$clinit:I

    const/4 v0, 0x3

    new-array v0, v0, [D

    return-object v0
.end method
