.class public final enum Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;
.super Ljava/lang/Enum;
.source "TouchAreaEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

.field public static final enum CENTER:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

.field public static final enum CENTER_BOTTOM:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

.field public static final enum CENTER_LEFT:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

.field public static final enum CENTER_RIGHT:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

.field public static final enum CENTER_TOP:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

.field public static final enum LEFT_BOTTOM:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

.field public static final enum LEFT_TOP:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

.field public static final enum OUT_OF_BOUNDS:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

.field public static final enum RIGHT_BOTTOM:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

.field public static final enum RIGHT_TOP:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;


# direct methods
.method private static synthetic $values()[Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;
    .registers 10

    .line 9
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    sget-object v1, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->LEFT_TOP:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    sget-object v2, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->RIGHT_TOP:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    sget-object v3, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->LEFT_BOTTOM:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    sget-object v4, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->RIGHT_BOTTOM:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    sget-object v5, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->OUT_OF_BOUNDS:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    sget-object v6, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER_LEFT:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    sget-object v7, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER_TOP:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    sget-object v8, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER_RIGHT:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    sget-object v9, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER_BOTTOM:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    filled-new-array/range {v0 .. v9}, [Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 10
    new-instance v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    new-instance v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    const-string v1, "LEFT_TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->LEFT_TOP:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    new-instance v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    const-string v1, "RIGHT_TOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->RIGHT_TOP:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    new-instance v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    const-string v1, "LEFT_BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->LEFT_BOTTOM:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    new-instance v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    const-string v1, "RIGHT_BOTTOM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->RIGHT_BOTTOM:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    new-instance v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    const-string v1, "OUT_OF_BOUNDS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->OUT_OF_BOUNDS:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    new-instance v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    const-string v1, "CENTER_LEFT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER_LEFT:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    new-instance v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    const-string v1, "CENTER_TOP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER_TOP:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    new-instance v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    const-string v1, "CENTER_RIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER_RIGHT:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    new-instance v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    const-string v1, "CENTER_BOTTOM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER_BOTTOM:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    .line 9
    invoke-static {}, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->$values()[Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    move-result-object v0

    sput-object v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->$VALUES:[Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;
    .registers 2

    .line 9
    const-class v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    return-object p0
.end method

.method public static values()[Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;
    .registers 1

    .line 9
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->$VALUES:[Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    invoke-virtual {v0}, [Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    return-object v0
.end method
