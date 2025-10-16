.class final enum Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;
.super Ljava/lang/Enum;
.source "Field7Delegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StarMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

.field public static final enum CONSTELLATION:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

.field public static final enum WANDERING:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 45
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    const-string v1, "WANDERING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;->WANDERING:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    .line 46
    new-instance v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    const-string v3, "CONSTELLATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;->CONSTELLATION:Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 44
    sput-object v3, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;->$VALUES:[Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;
    .locals 1

    .line 44
    const-class v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    return-object p0
.end method

.method public static values()[Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;
    .locals 1

    .line 44
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;->$VALUES:[Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    invoke-virtual {v0}, [Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dozingcatsoftware/vectorpinball/fields/Field7Delegate$StarMode;

    return-object v0
.end method
