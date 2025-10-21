.class final enum Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;
.super Ljava/lang/Enum;
.source "Field6Delegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlanetStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

.field public static final enum IN_PROGRESS:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

.field public static final enum OFF:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

.field public static final enum ON:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->OFF:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    new-instance v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    const-string v3, "IN_PROGRESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->IN_PROGRESS:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    new-instance v3, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    const-string v5, "ON"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->ON:Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->$VALUES:[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;
    .locals 1

    .line 21
    const-class v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    return-object p0
.end method

.method public static values()[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;
    .locals 1

    .line 21
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->$VALUES:[Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    invoke-virtual {v0}, [Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dozingcatsoftware/vectorpinball/fields/Field6Delegate$PlanetStatus;

    return-object v0
.end method
