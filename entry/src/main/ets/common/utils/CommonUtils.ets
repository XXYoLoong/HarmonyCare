import Context from '@ohos.app.ability.common';
import Logger from './Logger';
import CommonConstants from '../constants/CommonConstants';
import router from '@ohos.router';
import HobbyBean from '../bean/HobbyBean';

/**
 * This is a pop-up window tool class, which is used to encapsulate dialog code.
 * Developers can directly invoke the methods in.
 */
export class CommonUtils {
  /**
   * Alert dialog dialog
   */
  alertDialog(context: Context.UIAbilityContext) {
    AlertDialog.show({
      message: $r('app.string.alert_dialog_message'),
      alignment: DialogAlignment.Bottom,
      offset: {
        dx: 0,
        dy: CommonConstants.DY_OFFSET
      },
      primaryButton: {
        value: $r('app.string.cancel_button'),
        action: () => {
          Logger.info(CommonConstants.TAG_COMMON_UTILS, 'Callback cancel button is clicked');
        }
      },
      secondaryButton: {
        value: $r('app.string.definite_button'),
        action: () => {
          // Exiting the app.
          context.terminateSelf();
          Logger.info(CommonConstants.TAG_COMMON_UTILS, 'Callback definite button is clicked');
        }
      }
    });
  }

  /**
   * Date dialog dialog
   */
  datePickerDialog(dateCallback: (date: string) => void) {
    DatePickerDialog.show({
      start: new Date(CommonConstants.START_TIME),
      end: new Date(),
      selected: new Date(CommonConstants.SELECT_TIME),
      lunar: false,
      onAccept: (value: DatePickerResult) => {
        if (value.month !== undefined && value.year !== undefined && value.day !== undefined) {
          let year = value.year;
          let month = value.month + CommonConstants.PLUS_ONE;
          let day = value.day;
          let birthdate: string = this.getBirthDateValue(year, month, day);
          dateCallback(birthdate);
        } else {
          Logger.error(CommonConstants.TAG_COMMON_UTILS, 'DatePickerResult is incomplete');
        }
      }

    });
  }

  /**
   * Text dialog dialog
   */
  textPickerDialog(sexArray: Resource | string[], sexCallback: (value: string) => void) {
    // 检查 sexArray 是否为空
    if (this.isEmptyArr(sexArray)) {
      Logger.error(CommonConstants.TAG_COMMON_UTILS, 'sexArray is null or empty');
      return;
    }

    // 确保 `sexArray` 是符合 `string[]` 或 `Resource` 的类型
    if (Array.isArray(sexArray)) {
      TextPickerDialog.show({
        range: sexArray,  // 直接传入 string[] 类型
        selected: 0,
        onAccept: (result: TextPickerResult) => {
          // 检查 result.value 是否为 string[]
          if (Array.isArray(result.value)) {
            sexCallback(result.value.join(', '));  // 将 string[] 转换为单一字符串
          } else {
            sexCallback(result.value);
          }
        },
        onCancel: () => {
          Logger.info(CommonConstants.TAG_COMMON_UTILS, 'TextPickerDialog onCancel');
        }
      });
    } else {
      // 如果 sexArray 是 Resource 类型，则直接使用
      TextPickerDialog.show({
        range: sexArray,  // 直接传入 Resource 类型
        selected: 0,
        onAccept: (result: TextPickerResult) => {
          // 检查 result.value 是否为 string[]
          if (Array.isArray(result.value)) {
            sexCallback(result.value.join(', '));  // 将 string[] 转换为单一字符串
          } else {
            sexCallback(result.value);
          }
        },
        onCancel: () => {
          Logger.info(CommonConstants.TAG_COMMON_UTILS, 'TextPickerDialog onCancel');
        }
      });
    }
  }




  /**
   * Get default birth date
   *
   * @param {number} year year
   * @param {number} month month
   * @param {number} day day
   * @returns {string} return birth date
   */
  getBirthDateValue(year: number, month: number, day: number): string {
    let birthdate: string = `${year}${CommonConstants.DATE_YEAR}${month}` +
      `${CommonConstants.DATE_MONTH}${day}${CommonConstants.DATE_DAY}`;
    return birthdate;
  }

  isEmpty(obj: string | string[] | number[] | object | null | undefined): boolean {
    return obj === undefined || obj === null || obj === '' ||
      (Array.isArray(obj) && obj.length === 0) ||
      (typeof obj === 'object' && Object.keys(obj).length === 0);
  }


  isEmptyArr(array: string[] | Resource | HobbyBean[]): boolean {
    return this.isEmpty(array) || (Array.isArray(array) && array.length === 0);
  }


}

export default new CommonUtils();
