.class public final synthetic Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;-><init>()V

    sput-object v0, Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;->INSTANCE:Lj$/util/stream/LongPipeline$$ExternalSyntheticLambda12;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    sget v0, Lj$/util/stream/LongPipeline;->$r8$clinit:I

    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method
