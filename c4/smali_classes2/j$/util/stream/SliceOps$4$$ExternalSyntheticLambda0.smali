.class public final synthetic Lj$/util/stream/SliceOps$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/Supplier;
.implements Lj$/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lj$/util/stream/SliceOps$4$$ExternalSyntheticLambda0;

.field public static final synthetic INSTANCE$1:Lj$/util/stream/SliceOps$4$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/stream/SliceOps$4$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/util/stream/SliceOps$4$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lj$/util/stream/SliceOps$4$$ExternalSyntheticLambda0;->INSTANCE$1:Lj$/util/stream/SliceOps$4$$ExternalSyntheticLambda0;

    .line 2
    new-instance v0, Lj$/util/stream/SliceOps$4$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/util/stream/SliceOps$4$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lj$/util/stream/SliceOps$4$$ExternalSyntheticLambda0;->INSTANCE:Lj$/util/stream/SliceOps$4$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 1

    sget v0, Lj$/util/stream/SliceOps$4;->$r8$clinit:I

    new-array p1, p1, [Ljava/lang/Double;

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    sget v0, Lj$/util/stream/IntPipeline;->$r8$clinit:I

    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method
