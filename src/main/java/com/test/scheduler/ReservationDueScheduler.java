package com.test.scheduler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.test.dao.ReservationDAO;
import com.test.dto.ReservationDTO;

@Component
public class ReservationDueScheduler {
	
	@Autowired
	private ReservationDAO reservationDAO;
	
	@Scheduled(cron = "0 34 2 * * *") // 2시 34분
	public void reservationExpire() {
		// list only expired reservations
		List<ReservationDTO> expiredReservations = this.reservationDAO.listOnlyExpiredReservations();
		// cancel only expired ones
		for(ReservationDTO expiredReservation : expiredReservations) {
			this.reservationDAO.cancelTheReservation(expiredReservation.getReservation_Index());
		}
	} // 새벽 1시 0분 0초
	
}
